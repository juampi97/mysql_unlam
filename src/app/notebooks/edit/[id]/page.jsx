import React from "react";
import axios from "axios";
import NotebookEditForm from "@/components/NotebookEditForm";
import NavbarCustom from "@/components/NavbarCustom";

const getProducto = async (id) => {
  const notebooks = await axios.get(
    "/api/notebooks"
  );
  const notebook = notebooks.data.filter((item) => item.nro_inv == id);
  return notebook;
};

const EditNotebook = async ({ params }) => {
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
      <NotebookEditForm producto={producto[0]} />
    </>
  );
};

export default EditNotebook;
