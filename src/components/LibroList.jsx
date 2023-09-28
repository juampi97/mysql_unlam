"use client";
import React from "react";
import LibroListItem from "./LibroListItem";

const LibroList = ({ data }) => {
  return (
    <div className="w-full bg-gray-100 flex flex-col items-center">
          {data.map((libro) => (
              <LibroListItem key={libro.id} libro={libro} />
          ))}
    </div>
  );
};

export default LibroList;
