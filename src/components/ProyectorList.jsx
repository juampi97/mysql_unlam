"use client";
import React from "react";
import ProyectorListItem from "./ProyectorListItem";

const ProyectorList = ({ data }) => {
  return (
    <div className="w-full bg-gray-100 flex flex-col items-center">
          {data.map((proyector) => (
              <ProyectorListItem key={proyector.nro_inv} proyector={proyector} />
          ))}
    </div>
  );
};

export default ProyectorList;
