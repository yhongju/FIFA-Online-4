import { useState } from "preact/hooks";
import Subscribe from "../components/Subscribe.tsx";

const Index = () => {
  const [subscribed, setSubscribed] = useState(false);

  return (
    // <div class="bg-gradient-to-tr from-red-500 to-purple-400 relative h-screen w-screen">
    <div class="bg-black">
      {
        /* <img
        class="absolute inset-0 w-full h-full object-cover mix-blend-multiply filter brightness-50"
        alt="main background image"
        src="https://source.unsplash.com/random"
        draggable="false" // Ignore error: Type inference error
      /> */
      }
      <video autoPlay loop={true} class="w-screen h-screen blur-xl">
        <source src={"index.webm"} class="blur-xl" />
      </video>

      <div class="absolute inset-0 flex flex-col justify-center items-center w-5/6 max-w-lg mx-auto text-center">
        {subscribed
          ? (
            <h1 class="font-sans font-extrabold text-white text-3xl sm:text-4xl md:text-5xl md:leading-snug">
              You have subscribed!
            </h1>
          )
          : (
            <div class="space-y-8">
              <h1 class="font-sans font-extrabold text-white text-3xl sm:text-4xl md:text-5xl md:leading-tight">
                피파 온라인 4
                <span class="text-palette-primary inline-block">
                  선수 추천 서비스
                </span>
              </h1>
              <p class="text-palette-light text-base md:text-lg lg:text-xl">
                ...
              </p>
              {/* <Subscribe setSubscribed={setSubscribed} /> */}
            </div>
          )}
      </div>
    </div>
  );
};

export default Index;
