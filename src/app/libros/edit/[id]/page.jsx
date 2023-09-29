import React from "react";
import axios from "axios";
import LibroEditForm from "@/components/LibroEditForm";
import NavbarCustom from "@/components/NavbarCustom";

const getProducto = async (id) => {
  const libros = await axios.get(
    "/api/libros"
  );
  const libro = libros.data.filter((item) => item.id == id);
  return libro;
};

const EditLibro = async ({ params }) => {
  const producto = await getProducto(params.id);

  if (producto.length < 1) {
    return (
      <>
        <NavbarCustom />
        <section className="bg-gray-100 flex justify-center items-center py-4">
          <div>
            <h1>Producto no encontrado</h1>
          </div>
        </section>
      </>
    );
  }

  return (
    <>
      <NavbarCustom />
      <LibroEditForm producto={producto[0]} />
    </>
  );
};

export default EditLibro;
