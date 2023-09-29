import React from "react";
import axios from "axios";
import LibroList from "@/components/LibroList";
import NavbarCustom from "@/components/NavbarCustom";

const getProducts = async () => {
  const res = await axios.get("http://localhost:3000/api/libros");
  return res.data;
};

const ListLibroContainer = async () => {
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
      <LibroList data={res} />
    </div>
  );
};

export default ListLibroContainer;
