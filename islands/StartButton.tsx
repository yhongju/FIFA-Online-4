import { useContext, useEffect } from "preact/hooks";
import { StartContext } from "../routes/index.tsx";

const StartButton = () => {
  const setStarted = useContext(StartContext);

  return (
    <div class="absolute inset-0 flex flex-col justify-center items-center w-5/6 
      max-w-lg mx-auto text-center">
      <div class="space-y-8">
        <h1 class="font-sans font-extrabold text-white text-3xl sm:text-4xl 
                md:text-5xl md:leading-tight">
          피파 온라인 4
          <span class="text-palette-primary inline-block">
            선수 추천 서비스
          </span>
        </h1>
      </div>
      <button
        class="text-palette-light text-palette-light text-base md:text-lg
                lg:text-xl mt-10 bg-green-600 p-2 opacity-80"
        onClick={() => {
          setStarted && setStarted(true);
          console.log("!");
        }}
      >
        내 조건에 최적인 선수 바로찾기!
      </button>
    </div>
  );
};

export default StartButton;
