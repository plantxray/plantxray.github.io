document.addEventListener("DOMContentLoaded", function () {
  const proteinUrls = [
    "https://files.rcsb.org/download/1CRN.pdb", // Replace these URLs with the URLs of the PDB files you want to display
    "https://files.rcsb.org/download/2BTF.pdb",
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

  proteinUrls.forEach((url, index) => {
    const containerId = `viewport${index + 1}`;
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

    stage.setParameters({ backgroundColor: "white" });
  });
});
