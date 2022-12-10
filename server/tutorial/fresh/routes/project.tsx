/**
 * Data fetching example
 */

import { Handlers, PageProps } from "$fresh/server.ts";

interface Project {
  name: string;
  stars: number;
}

export const handler: Handlers<Project> = {
  async GET(_, ctx) {
    const project = await db.projects.findOne({ id: ctx.params.id }); // Dummy DB

    if (!project) {
      return new Response("Project not found!", { status: 404 });
    }

    return ctx.render(project);
  },
};

const ProjectPage = (props: PageProps<Project>) => (
  <div>
    <h1>{props.data.name}</h1>
    <p>{props.data.stars}</p>
  </div>
);

export default ProjectPage;
