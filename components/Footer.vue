<template>
  <div class="text-center py-10 text-blue-300">
    <p class="mb-2">
      Reach Ben on
      <NuxtLink to="mailto://ben05allen@hotmail.com" rel="noreferrer"
        >email</NuxtLink
      >,
      <NuxtLink to="https://bsky.app/profile/bn1n.bsky.social" rel="noreferrer"
        >Bluesky</NuxtLink
      >, or
      <NuxtLink to="https://www.linkedin.com/in/bnln/" rel="noreferrer"
        >LinkedIn</NuxtLink
      >.
    </p>
    <p>&copy; Copyright {{ currYear }} Benjamin Allen.</p>
    <p>
      Content licensed under the Creative Commons
      attribution-noncommercial-sharealike Licence.
    </p>
  </div>
</template>

<script setup lang="ts">
const currYear = new Date().getFullYear();
</script>
