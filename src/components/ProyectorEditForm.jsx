"use client";
import React, { useState } from "react";
import axios from "axios";
import { useRouter, useParams } from "next/navigation";

const ProyectorEditForm = ({ producto }) => {
  const router = useRouter();

  const [proyector, setProyector] = useState({
    nro_inv: producto.nro_inv,
    cod_rec: producto.cod_rec,
    marca: producto.marca,
    modelo: producto.modelo,
    sn: producto.sn,
    ubicacion: producto.ubicacion,
    estado: producto.estado,
    fecha_ingreso: producto.fecha_ingreso,
    vga: producto.vga,
    hdmi: producto.hdmi,
    adicionales: producto.adicionales,
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
      try {
        const res = await axios.patch(
          "/api/proyectores/" + producto.nro_inv,
          proyector
        );
        alert("Proyector modificado correctamente");
        router.push("/proyectores");
      } catch (error) {
        alert("No se pudo modificar el proyector");
        console.log(error)
    }
  };

  const handleChange = ({ target: { name, value } }) => {
    setProyector({ ...proyector, [name]: value });
  };

  return (
    <>
      <div className="w-full flex justify-center">
        <form
          onSubmit={handleSubmit}
          className="bg-white w-2/5 shadow-md rounded px-8 py-6 my-4"
        >
          <div className="grid grid-cols-2 gap-4">
            <label htmlFor="nro_inv">Numero de inventario:</label>
            <input
              type="text"
              name="nro_inv"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.nro_inv}
            />
            <label htmlFor="cod_rec">Codigo de recurso: </label>
            <input
              type="text"
              name="cod_rec"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.cod_rec}
            />
            <label htmlFor="marca">Marca: </label>
            <input
              type="text"
              name="marca"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.marca}
            />
            <label htmlFor="modelo">Modelo: </label>
            <input
              type="text"
              name="modelo"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.modelo}
            />
            <label htmlFor="sn">SN: </label>
            <input
              type="text"
              name="sn"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.sn}
            />
            <label htmlFor="ubicacion">Ubicacion: </label>
            <input
              type="text"
              name="ubicacion"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.ubicacion}
            />
            <label htmlFor="estado">Estado: </label>
            <input
              type="text"
              name="estado"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.estado}
            />
            <label htmlFor="fecha_ingreso">Fecha de ingreso: </label>
            <input
              type="text"
              name="fecha_ingreso"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.fecha_ingreso}
            />
            <label htmlFor="vga">Entrada VGA: </label>
            <input
              type="text"
              name="vga"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.vga}
            />
            <label htmlFor="hdmi">Entrada HDMI: </label>
            <input
              type="text"
              name="hdmi"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.hdmi}
            />
            <label htmlFor="adicionales">Adicionales: </label>
            <input
              type="text"
              name="adicionales"
              onChange={handleChange}
              className="shadow border rounded p-2"
              placeholder={producto.adicionales}
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

export default ProyectorEditForm;
