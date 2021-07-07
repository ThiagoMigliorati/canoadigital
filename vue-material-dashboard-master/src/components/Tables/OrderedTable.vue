<template>
  <div>
    <md-table v-model="users" :table-header-color="tableHeaderColor">
      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="ID">{{ item.id }}</md-table-cell>
        <md-table-cell md-label="Veiculo">{{ item.veiculo }}</md-table-cell>
        <md-table-cell md-label="Marca">{{ item.marca }}</md-table-cell>
        <md-table-cell md-label="Ano">{{ item.ano }}</md-table-cell>
        <md-table-cell md-label="Descrição">{{ item.descricao }}</md-table-cell>
        <md-table-cell md-label="">
          <md-button class="md-just-icon md-simple md-primary"  @click="edit(item.id)">
            <md-icon>edit</md-icon>
            <md-tooltip md-direction="top">Editar</md-tooltip>
          </md-button>
        </md-table-cell>
        <md-table-cell md-label="">
          <md-button class="md-just-icon md-simple md-danger" @click="delet(item.id)">
            <md-icon>close</md-icon>
            <md-tooltip md-direction="top">Deletar</md-tooltip>
          </md-button>
        </md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: "ordered-table",
  props: {
    tableHeaderColor: {
      type: String,
      default: ""
    }
  },
  mounted() {

    this.updateTable();
  },
  methods: {
    updateTable: function(){
      this.users = []
      axios
        .get('http://localhost:5000/api/v1/cars/',{id: null},{
          'Content-Type': 'application/json;charset=utf-8',
          "Access-Control-Allow-Origin": "*"
        })
        .then(res => res.data)
        .then(res => {
          let vendidosTotal = res.map(el => el.vendido).filter(function(el){
            return el > 0  // pego apenas elementos maiores que 0 (vendidos)
          })
          res.forEach((aux)=>{
            this.users.push({
              id: aux.id,
              veiculo: aux.veiculo,
              marca: aux.marca,
              ano: aux.ano,
              descricao: aux.descricao
            })
            this.$emit('meu-evento', { total: this.users.length, totalVendidos: vendidosTotal.length})
            return true;
          })
        })
    },
    edit: function(id){
      this.$router.push({name:'User Profile', params: {color: 'purple', id: id}}); 
    },
    delet: function(id){
      this.$emit('meu-evento', { total: this.users.length})
       axios
        .delete('http://localhost:5000/api/v1/cars/'+id,{id: id},{
         'Content-Type': 'application/json;charset=utf-8',
         "Access-Control-Allow-Origin": "*"
        })
        .then(res => res.data)
        .then(res => res) // colocar mensagem de deletado
      this.updateTable()
    }
  },
  data() {
    return {
      selected: [],
      users: [],
      infoaxios: null
    };
  }
};
</script>
