import { asset } from "$fresh/runtime.ts";

const StaticFiles = () => {
  return (
    <p>
      <a href={asset("/fresh-static-docs.pdf")}>View docs</a>
    </p>
  );
};

export default StaticFiles;
