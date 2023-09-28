import React from "react";
import axios from "axios";
import ProyectorList from "../../components/ProyectorList";
import NavbarCustom from "@/components/NavbarCustom";

const getProducts = async () => {
  const res = await axios.get("http://localhost:3000/api/proyectores");
  return res.data;
};

const ListProyectoContainer = async () => {
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
      <ProyectorList data={res} />
    </div>
  );
};

export default ListProyectoContainer;
