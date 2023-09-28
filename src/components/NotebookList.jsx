"use client";
import React from "react";
import NotebookListItem from "./NotebookListItem";

const NotebookList = ({ data }) => {
  return (
    <div className="w-full bg-gray-100 flex flex-col items-center">
          {data.map((notebook) => (
              <NotebookListItem key={notebook.nro_inv} notebook={notebook} />
          ))}
    </div>
  );
};

export default NotebookList;
