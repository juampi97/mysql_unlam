import React from "react";
import axios from "axios";
import InstrumentEditForm from "@/components/InstrumentEditForm";
import NavbarCustom from "@/components/NavbarCustom";

const getProducto = async (id) => {
  const instrumentos = await axios.get(
    "http://localhost:3000/api/instrumentos"
  );
  const instrumento = instrumentos.data.filter((item) => item.nro_inv == id);
  return instrumento;
};

const EditInstrumento = async ({ params }) => {
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
      <InstrumentEditForm producto={producto[0]} />
    </>
  );
};

export default EditInstrumento;
