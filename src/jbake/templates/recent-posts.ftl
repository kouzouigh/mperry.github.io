      <div id="sidebar" class="col-md-3">
        <aside>
          <section>


            <div class="panel panel-primary">
                <div class="panel-heading">
                    <i class="fa fa-lg panel-title"> Recent Posts</i>
                </div>

                <div id="recent-posts" class="panel-body">

				<ul>

                  <#list posts[0..1] as post>

				 <li><p>${post.date?string("yyyy-MM-dd")} - <a href="${post.uri}">${post.title}</a></p></li>

				  </#list>
				  </ul>
				</div>



			</div>

          </section>
        </aside>
      </div>
      <#global sidebar_visible=true>
