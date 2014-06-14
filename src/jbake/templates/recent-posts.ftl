      <div id="sidebar" class="col-md-3">
        <aside>
          <section>


            <div class="panel panel-primary github-repoview">
                <div class="panel-heading">
                <!--
                    <i class="fa fa-github fa-lg panel-title"> ${config.sidebar_github_repoview_title}</i>
                    -->
                    <i class="fa fa-lg panel-title"> Recent Posts</i>
                </div>
                <!--
                <div id="repoview" class="panel-body">
                </div>

				-->
                  <#list posts[0..0] as post>
                                <li>
                                  <p>${post.date?string("yyyy-MM-dd")} - <a href="${post.uri}">${post.title}</a></p>
                                </li>
                              </#list>

            </div>

          </section>
        </aside>
      </div>
      <#global sidebar_visible=true>
