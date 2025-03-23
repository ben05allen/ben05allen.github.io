<script setup lang="ts">
const { data: blog } = await useAsyncData(() => queryCollection('content').path('/').first())

useSeoMeta({

}
)
</script>
