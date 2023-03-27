document.addEventListener("DOMContentLoaded", function () {
  const proteinData = [
   { url: "https://files.rcsb.org/download/7TVW.pdb", name: "7TVW" },
   { url: "https://files.rcsb.org/download/6EZR.pdb", name: "6EZR" },
   { url: "https://files.rcsb.org/download/6EZS.pdb", name: "6EZS" },
   { url: "https://files.rcsb.org/download/6EZT.pdb", name: "6EZT" },
   { url: "https://files.rcsb.org/download/6ATX.pdb", name: "6ATX" },
   { url: "https://files.rcsb.org/download/6AZB.pdb", name: "6AZB" },
   { url: "https://files.rcsb.org/download/6AZC.pdb", name: "6AZC" },
   { url: "https://files.rcsb.org/download/6EZD.pdb", name: "6EZD" },
   { url: "https://files.rcsb.org/download/6AVV.pdb", name: "6AVV" },
   { url: "https://files.rcsb.org/download/6AVW.pdb", name: "6AVW" },
   { url: "https://files.rcsb.org/download/6AVX.pdb", name: "6AVX" },
   { url: "https://files.rcsb.org/download/6AVY.pdb", name: "6AVX" },
   { url: "https://files.rcsb.org/download/4QAM.pdb", name: "4QAM" },
   { url: "https://files.rcsb.org/download/3U0V.pdb", name: "3U0V" },
  ];

  const main = document.querySelector("main");

  function createSelect(options, selectedValue, onChange) {
    const select = document.createElement("select");
    options.forEach((optionValue) => {
      const option = document.createElement("option");
      option.setAttribute("value", optionValue);
      option.textContent = optionValue.charAt(0).toUpperCase() + optionValue.slice(1);
      if (optionValue === selectedValue) option.selected = true;
      select.appendChild(option);
    });
    select.addEventListener("change", onChange);
    return select;
  }

  proteinData.forEach(({ url, name }, index) => {
    const containerId = `viewport${index + 1}`;

    // Add name of the protein structure
    const title = document.createElement("h2");
    title.textContent = name;
    main.appendChild(title);

    const viewport = document.createElement("div");
    viewport.setAttribute("id", containerId);
    viewport.style.width = "100%";
    viewport.style.height = "600px";
    main.appendChild(viewport);

    const stage = new NGL.Stage(containerId);

    stage.loadFile(url, { defaultRepresentation: true }).then(function (component) {
      let currentRepresentation = "cartoon";
      component.addRepresentation(currentRepresentation);

      const controls = document.createElement("div");
      controls.setAttribute("class", "controls");

      const representationLabel = document.createElement("label");
      representationLabel.textContent = "Representation:";
      controls.appendChild(representationLabel);

      const representations = ["cartoon", "surface", "licorice", "backbone", "spacefill"];
      const representationSelect = createSelect(representations, currentRepresentation, function (event) {
        const newRepresentation = event.target.value;
        component.removeAllRepresentations();
        component.addRepresentation(newRepresentation);
        currentRepresentation = newRepresentation;
      });
      controls.appendChild(representationSelect);

      // Additional controls
      const colorSchemes = ["element", "chainid", "modelindex", "sstruc"];
      const colorSchemeSelect = createSelect(colorSchemes, "element", function (event) {
        const newColorScheme = event.target.value;
        component.removeAllRepresentations();
        component.addRepresentation(currentRepresentation, { colorScheme: newColorScheme });
      });

      const colorSchemeLabel = document.createElement("label");
      colorSchemeLabel.textContent = "Color Scheme:";
      controls.appendChild(colorSchemeLabel);
      controls.appendChild(colorSchemeSelect);

      main.insertBefore(controls, viewport);

      component.autoView();
    });

    stage.setParameters({ backgroundColor: "black" });
  });
});
