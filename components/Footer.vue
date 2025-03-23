<template>
  <div>
    <p>&copy; Copyright {{ currYear }} Benjamin Allen</p>
    <p>
      Reach me on
      <NuxtLink to="mailto://ben05allen@hotmail.com" rel="noreferrer"
        >email</NuxtLink
      >,
      <NuxtLink to="https://bsky.app/profile/bn1n.bsky.social" rel="noreferrer"
        >BlueSky</NuxtLink
      >
      , or
      <NuxtLink to="https://www.linkedin.com/in/bnln/" rel="noreferrer"
        >LinkedIn</NuxtLink
      >.
    </p>
  </div>
</template>

<script setup lang="ts">
const currYear = new Date().getFullYear();
</script>
