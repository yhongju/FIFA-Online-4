/**
 * Manually trigger 404 for some cases
 */

import { Handlers, PageProps } from "$fresh/server.ts";

export const handler: Handlers = {
  async GET(_, ctx) {
    const blogpost = await fetchBlogpost(ctx.params.slug); // Dummy function

    if (!blogpost) {
      return ctx.renderNotFound();
    }

    return ctx.render({ blogpost });
  },
};

const BlogpostPage = ({ data }: PageProps) => (
  <article>
    <h1>{data.blogpost.title}</h1>
    {/* Rest of page... */}
  </article>
);

export default BlogpostPage;
