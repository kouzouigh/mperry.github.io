      <div id="sidebar" class="col-md-3">
        <aside>
          <section>


            <div class="panel panel-primary recent-posts-class">
                <div class="panel-heading">
                    <i class="fa fa-lg panel-title"> Recent Posts</i>
                </div>

                <div id="recent-posts" class="panel-body">



                  <#list posts[0..1] as post>

				 <p>${post.date?string("yyyy-MM-dd")} - <a href="${post.uri}">${post.title}</a></p>

				  </#list>

				</div>



			</div>

          </section>
        </aside>
      </div>
      <#global sidebar_visible=true>
