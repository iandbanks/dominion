import React from "react";

const Card = ({ title }) => {
  return (
    <div className="bg-blue-900 p-20 rounded">
      <p className="text-white">{title}</p>
    </div>
  );
};

export default Card;
