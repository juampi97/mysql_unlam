"use client";
import React from "react";
import axios from "axios";
import Link from "next/link";
import { useRouter, useParams } from "next/navigation";

const ProyectorListItem = ({ proyector }) => {
  const router = useRouter();

  const deleteProyector = async ({ target: { id } }) => {
    //Validar eleccion primero
    try {
      const res = await axios.delete("/api/proyectores/" + id);
      alert("Proyector eliminado correctamente");
      router.push("/proyectores");
    } catch (error) {
      alert("No se pudo eliminar el proyector");
    }
  };

  const entradaVGA = (vga) => {
    return vga ? "Disponible" : "No disponible";
  }
  
  const entradaHDMI = (hdmi) => {  
    return hdmi ? "Disponible" : "No disponible";  
  }

  let entrada_vga = entradaVGA(proyector.vga);
  let entrada_hdmi = entradaHDMI(proyector.hdmi);
  return (
    <>
      <div
        key={proyector.nro_inv}
        className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-2"
      >
        <div className="grid grid-cols-3 gap-4 mx-4">
          <p>Numero de inventario:</p>
          <p className="col-span-2">{proyector.nro_inv}</p>
          <p>Codigo de recurso:</p>
          <p className="col-span-2">{proyector.cod_rec}</p>
          <p>Marca:</p>
          <p className="col-span-2">{proyector.marca}</p>
          <p>Modelo:</p>
          <p className="col-span-2">{proyector.modelo}</p>
          <p>SN:</p>
          <p className="col-span-2">{proyector.sn}</p>
          {/* <p>{proyector.estado}</p>       */}
          <p>Ubicacion:</p>
          <p className="col-span-2">{proyector.ubicacion}</p>
          <p>Fecha de ingreso:</p>
          <p className="col-span-2">{proyector.fecha_ingreso}</p>
          <p>Entrada VGA:</p>
          <p className="col-span-2">{entrada_vga}</p>
          <p>Entrada HDMI:</p>
          <p className="col-span-2">{entrada_hdmi}</p>
          <p>Adicionales:</p>
          <p className="col-span-2">{proyector.adicionales}</p>
        </div>
        <div className="flex justify-center">
          <Link href={`/proyectores/edit/${proyector.nro_inv}`}>
            <button className="bg-yellow-500 hover:bg-yellow-700 mt-5 py-2 px-3 rounded-md font-bold text-white me-2">
              Modificar
            </button>
          </Link>
          <button
            onClick={deleteProyector}
            className="bg-red-500 hover:bg-red-700 mt-5 py-2 px-3 rounded-md font-bold text-white ms-2"
            id={proyector.nro_inv}
          >
            Eliminar
          </button>
        </div>
      </div>
    </>
  );
};

export default ProyectorListItem;
