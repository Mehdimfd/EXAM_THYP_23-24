// Fonction pour récupérer les données de l'API
function getData(apiKey) {
    const apiUrl = 'http://localhost/omeka-s/api/items?pretty_print=1'; 
    fetch(apiUrl, {
      headers: {
        'Authorization': apiKey,
        'Accept': 'application/json'
      }
    })
    .then(response => response.json())
    .then(data => showItems(data))
    .catch(error => console.error('Erreur :', error));
  }
  
  // Fonction pour afficher la liste des items
  function showItems(itemsData) {
    const itemsList = document.getElementById('itemsList');
  
    itemsData.forEach(item => {
      const itemId = item['o:id'];
      const title = item['o:title'];
      
      const itemDiv = document.createElement('div');
      itemDiv.innerHTML = `
        <p>Identifiant: ${itemId}</p>
        <p>Titre: ${title}</p>
        <hr>
      `;
      itemsList.appendChild(itemDiv);
    });
  }
  function filterItems() {
    const filterInput = document.getElementById('filterInput');
    const filterValue = filterInput.value.toUpperCase();
    const items = document.getElementById('itemsList').getElementsByTagName('div');
  
    for (let i = 0; i < items.length; i++) {
      const title = items[i].getElementsByTagName('p')[1];
      if (title) {
        const txtValue = title.textContent || title.innerText;
        if (txtValue.toUpperCase().indexOf(filterValue) > -1) {
          items[i].style.display = '';
        } else {
          items[i].style.display = 'none';
        }
      }
    }
  }
  
  const votreCleAPI = 'KTOQLTeWBgxpbnoc2XuyW44Y4X6znMdo';
  getData(votreCleAPI);
  