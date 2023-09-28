"use client";
import React from "react";
import axios from "axios";
import Link from "next/link";
import { useRouter, useParams } from "next/navigation";

const LibroListItem = ({ libro }) => {
  const router = useRouter();

  const deleteLibro = async ({ target: { id } }) => {
    //Validar eleccion primero
    try {
      const res = await axios.delete("/api/libros/" + id);
      alert("Libro eliminado correctamente");
      router.push("/libros");
    } catch (error) {
      alert("No se pudo eliminar el libro");
    }
  };

  return (
    <>
      <div
        key={libro.id}
        className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-2"
      >
        <div className="grid grid-cols-3 gap-4 mx-4">
          <p>ID:</p>
          <p className="col-span-2">{libro.id}</p>
          <p>Descripcion:</p>
          <p className="col-span-2">{libro.descripcion}</p>
          <p>Idioma:</p>
          <p className="col-span-2">{libro.idioma}</p>
          <p>Tipo:</p>
          <p className="col-span-2">{libro.tipo}</p>
          <p>Ubicacion:</p>
          <p className="col-span-2">{libro.ubicacion}</p>
          <p>Instrumento asociado:</p>
          <p className="col-span-2">{libro.instrumento_asociado}</p>
        </div>
        <div className="flex justify-center">
          <Link href={`/libros/edit/${libro.id}`}>
            <button className="bg-yellow-500 hover:bg-yellow-700 mt-5 py-2 px-3 rounded-md font-bold text-white me-2">
              Modificar
            </button>
          </Link>
          <button
            onClick={deleteLibro}
            className="bg-red-500 hover:bg-red-700 mt-5 py-2 px-3 rounded-md font-bold text-white ms-2"
            id={libro.id}
          >
            Eliminar
          </button>
        </div>
      </div>
    </>
  );
};

export default LibroListItem;
