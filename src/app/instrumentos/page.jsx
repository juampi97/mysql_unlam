import React from "react";
import axios from "axios";
import InstrumentList from "../../components/InstrumentList";
import NavbarCustom from "@/components/NavbarCustom";

const getProducts = async () => {
  const res = await axios.get("/api/instrumentos");
  return res.data;
};

const ListInstrumentosContainer = async () => {
  const res = await getProducts();
  if (res.error) {
    return (
      <>
        <NavbarCustom />
        <div className="text-center">
          <h1>Error</h1>
        </div>
      </>
    );
  }
  return (
    <div>
      <NavbarCustom />
      <InstrumentList data={res} />
    </div>
  );
};

export default ListInstrumentosContainer;
