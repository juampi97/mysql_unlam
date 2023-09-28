"use client";
import React from "react";
import InstrumentListItem from "./InstrumentListItem";

const InstrumentList = ({ data }) => {
  return (
    <div className="w-full bg-gray-100 flex flex-col items-center">
          {data.map((instrumento) => (
              <InstrumentListItem key={instrumento.nro_inv} instrumento={instrumento} />
          ))}
    </div>
  );
};

export default InstrumentList;
