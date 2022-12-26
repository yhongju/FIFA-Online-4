import { useState } from "preact/hooks";
import Subscribe from "../components/Subscribe.jsx";
import "../main.css";

const IndexPage = () => {
  const [subscribed, setSubscribed] = useState(false);

  return (
    <div class="bg-gradient-to-tr from-red-500 to-purple-400 relative h-screen w-screen">
      <img
        class="absolute inset-0 w-full h-full object-cover mix-blend-multiply filter brightness-50"
        alt="main background image"
        src="https://source.unsplash.com/random"
      />

      <div class="absolute inset-0 flex flex-col justify-center items-center w-5/6 max-w-lg mx-auto text-center">
        {subscribed
          ? (
            <h1 class="font-primary font-extrabold text-white text-3xl sm:text-4xl md:text-5xl md:leading-snug">
              You have subscribed!
            </h1>
          )
          : (
            <div class="space-y-8">
              <h1 class="font-primary font-extrabold text-white text-3xl sm:text-4xl md:text-5xl md:leading-tight">
                Easily capture emails on{"  "}
                <span class="text-palette-primary">
                  Notion.
                </span>
              </h1>
              <p class="font-secondary text-palette-light text-base md:text-lg lg:text-xl">
                Capture your customer emails on a beautiful landing page that
                syncs with your Notion workspace.
              </p>
              <Subscribe setSubscribed={setSubscribed} />
            </div>
          )}
      </div>
    </div>
  );
};

export default IndexPage;
