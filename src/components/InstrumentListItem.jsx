"use client";
import React from "react";
import axios from "axios";
import Link from "next/link";
import { useRouter, useParams } from "next/navigation";

const InstrumentListItem = ({ instrumento }) => {
  const router = useRouter();

  const deleteInstrumento = async ({ target: { id } }) => {
    //Validar eleccion primero
    try {
      const res = await axios.delete("/api/instrumentos/" + id);
      alert("Instrumento eliminado correctamente");
      router.push("/instrumentos");
    } catch (error) {
      alert("No se pudo eliminar el instrumento");
    }
  };

  return (
    <>
      <div
        key={instrumento.nro_inv}
        className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-2"
      >
        <div className="grid grid-cols-3 gap-4 mx-4">
          <p>Numero de inventario:</p>
          <p className="col-span-2">{instrumento.nro_inv}</p>
          <p>Codigo de recurso:</p>
          <p className="col-span-2">{instrumento.cod_rec}</p>
          <p>Tipo:</p>
          <p className="col-span-2">{instrumento.tipo}</p>
          <p>Descripcion:</p>
          <p className="col-span-2">{instrumento.descripcion}</p>
          <p>Marca:</p>
          <p className="col-span-2">{instrumento.marca}</p>
          <p>Modelo:</p>
          <p className="col-span-2">{instrumento.modelo}</p>
          <p>SN:</p>
          <p className="col-span-2">{instrumento.sn}</p>
          <p> AB - Rango:</p>
          <p className="col-span-2">{instrumento.ab_rango}</p>
          <p>Codigo manual:</p>
          <p className="col-span-2">{instrumento.cod_manual}</p>
          <p>Especificaciones:</p>
          <p className="col-span-2">{instrumento.especificaciones}</p>
          {/* <p>{instrumento.estado}</p>       */}
          <p>Ubicacion:</p>
          <p className="col-span-2">{instrumento.ubicacion}</p>
          <p>Adicionales:</p>
          <p className="col-span-2">{instrumento.adicionales}</p>
          <p>Fecha de ingreso:</p>
          <p className="col-span-2">{instrumento.fecha_ingreso}</p>
        </div>
        <div className="flex justify-center">
          <Link href={`/instrumentos/edit/${instrumento.nro_inv}`}>
            <button className="bg-yellow-500 hover:bg-yellow-700 mt-5 py-2 px-3 rounded-md font-bold text-white me-2">
              Modificar
            </button>
          </Link>
          <button
            onClick={deleteInstrumento}
            className="bg-red-500 hover:bg-red-700 mt-5 py-2 px-3 rounded-md font-bold text-white ms-2"
            id={instrumento.nro_inv}
          >
            Eliminar
          </button>
        </div>
      </div>
    </>
  );
};

export default InstrumentListItem;
