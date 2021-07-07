<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <edit-profile-form v-if="color == 'purple'" v-bind:id="id" data-background-color="purple"> </edit-profile-form>
        <edit-profile-form v-if="color == 'blue'" v-bind:id="id" data-background-color="blue"> </edit-profile-form>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <!--<user-card> </user-card>-->
      </div>
     
    </div>
  </div>
</template>

<script>
import { EditProfileForm, UserCard } from "@/pages";
//  console.log(router.params);
export default {
  components: {
    EditProfileForm,
    //UserCard
  },
  created(){
    if(this.$route.params.color == "purple"){
      this.color = "purple"
      this.id = this.$route.params.id
    }
  },
 data() {
    return {
      color: "blue",
      id: 0
    };
  }
};
</script>
