"use client";
import React, { useState } from "react";
import axios from "axios";
import { useRouter, useParams } from "next/navigation";

const LibroEditForm = ({ producto }) => {
  const router = useRouter();

  const [libro, setLibro] = useState({
    id: producto.id,
    descripcion: producto.descripcion,
    idioma: producto.idioma,
    tipo: producto.tipo,
    ubicacion: producto.ubicacion,
    instrumento_asociado: producto.instrumento_asociado,
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const res = await axios.patch("/api/libros/" + producto.id, libro);
      alert("Libro modificado correctamente");
      router.push("/libros");
    } catch (error) {
      alert("No se pudo modificar el libro");
      console.log(error);
    }
  };

  const handleChange = ({ target: { name, value } }) => {
    setLibro({ ...libro, [name]: value });
  };

  return (
    <>
      <div className="w-full flex justify-center">
        <form
          onSubmit={handleSubmit}
          className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-4"
        >
          <div className="grid grid-cols-2 gap-4">
            <label htmlFor="id">ID:</label>
            <input
              type="text"
              name="id"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.id}
            />
            <label htmlFor="descripcion">Descripcion: </label>
            <input
              type="text"
              name="descripcion"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.descripcion}
            />
            <label htmlFor="idioma">Idioma: </label>
            <input
              type="text"
              name="idioma"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.idioma}
            />
            <label htmlFor="tipo">Tipo: </label>
            <input
              type="text"
              name="tipo"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.tipo}
            />
            <label htmlFor="ubicacion">Ubicacion: </label>
            <input
              type="text"
              name="ubicacion"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.ubicacion}
            />
            <label htmlFor="instrumentos_asociado">
              Instrumentos asociado:{" "}
            </label>
            <input
              type="text"
              name="instrumentos_asociado"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.instrumentos_asociado}
            />
          </div>
          <div className="flex justify-center">
            <button className="bg-yellow-500 hover:bg-yellow-700 mt-5 py-2 px-3 rounded-md font-bold text-white">
              Modificar
            </button>
          </div>
        </form>
      </div>
    </>
  );
};

export default LibroEditForm;
