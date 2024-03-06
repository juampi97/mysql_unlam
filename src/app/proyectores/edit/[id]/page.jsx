import React from "react";
import axios from "axios";
import ProyectorEditForm from "@/components/ProyectorEditForm";
import NavbarCustom from "@/components/NavbarCustom";

const getProducto = async (id) => {
  const proyectores = await axios.get(
    "http://localhost:3000/api/proyectores"
  );
  const proyector = proyectores.data.filter((item) => item.nro_inv == id);
  return proyector;
};

const EditProyector = async ({ params }) => {
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
      <ProyectorEditForm producto={producto[0]} />
    </>
  );
};

export default EditProyector;
