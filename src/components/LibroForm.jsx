"use client";
import React, { useState } from "react";
import axios from "axios";
import { useRouter, useParams } from "next/navigation";

const LibroForm = () => {
  const router = useRouter();

  const [libro, setLibro] = useState({
    id: "",
    descripcion: "",
    idioma: "",
    tipo: "",
    ubicacion: "",
    instrumento_asociado: "",
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (
      !libro.id ||
      !libro.descripcion ||
      !libro.idioma ||
      !libro.tipo ||
      !libro.ubicacion ||
      !libro.instrumento_asociado
    ) {
      alert("Todos los campos son obligatorios.");
    } else {
      try {
        const res = await axios.post("/api/libros", libro);
        alert("Libro agregado correctamente");
        router.push("/libros");
      } catch (error) {
        alert("No se pudo agregar el libro");
      }
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
            />
            <label htmlFor="descripcion">Descripcion: </label>
            <input
              type="text"
              name="descripcion"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="idioma">Idioma: </label>
            <input
              type="text"
              name="idioma"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="tipo">Tipo: </label>
            <input
              type="text"
              name="tipo"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
            <label htmlFor="ubicacion">Ubicacion: </label>
            <input
              type="text"
              name="ubicacion"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />

            <label htmlFor="instrumento_asociado">Instrumento asociado: </label>
            <input
              type="text"
              name="instrumento_asociado"
              onChange={handleChange}
              className="shadow border rounded p-2"
            />
          </div>
          <div className="flex justify-center">
            <button className="bg-blue-500 hover:bg-blue-700 mt-5 py-2 px-3 rounded-md font-bold text-white">
              Agregar
            </button>
          </div>
        </form>
      </div>
    </>
  );
};

export default LibroForm;
