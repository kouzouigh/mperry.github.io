package com.github.mperry

import fj.F
import fj.Function
import fj.Unit
import groovy.transform.TypeChecked

import java.nio.file.FileVisitResult
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.SimpleFileVisitor
import java.nio.file.attribute.BasicFileAttributes

import static fj.Unit.unit

@TypeChecked
class Mark {

    static void main(def args) {
        println("hi world")
//        registerAll(new File("src/jbake"), { Unit u -> Unit.unit() })
        registerAll(new File("."), { Unit u -> Unit.unit() })
    }

    static void register(File dir) {
        println("Registering ${dir.canonicalPath}")
    }

    static void registerAll(File dir, F<Unit, Unit> f) throws IOException {
        // register directory and sub-directories
        Files.walkFileTree(dir.toPath(), new SimpleFileVisitor<Path>() {
            @Override
            public FileVisitResult preVisitDirectory(Path d, BasicFileAttributes attrs)
                    throws IOException
            {
                register(d.toFile());
                return FileVisitResult.CONTINUE;
            }
        });
    }

}