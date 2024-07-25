"use client";

const CardSkeleton = () => {
  return (
    <div className="card-skeleton p-5 bg-gray-600 border border-slate-400 rounded-md">
      {/* This is the header skeleton */}
      <div className="animate-pulse">
        <div className="flex flex-col items-center justify-between">
          <div className="w-64 py-3 bg-gray-400 flex items-center rounded-sm justify-center">
            <div className="w-48 bg-gray-500 py-1 center rounded"></div>
          </div>
          {/* This is the avatar skeleton */}
          <div className="w-60 h-48"></div>
          <div className="w-60 h-32 bg-gray-400 rounded-t"></div>
          <div className="w-64 py-3 bg-gray-400 flex items-center rounded-sm justify-center relative">
            <div className="w-6 h-6 bg-gray-500 py-2 rounded-full absolute left-1"></div>
            <div className="w-20 bg-gray-500 py-1 center rounded"></div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default CardSkeleton;
