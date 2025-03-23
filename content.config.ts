import { defineContentConfig, defineCollection, z } from "@nuxt/content";

export default defineContentConfig({
  collections: {
    content: defineCollection({
      type: "page",

      source: { include: "blog/*.md" },
      schema: z.object({
        tags: z.array(z.string()),
        image: z.string(),
        date: z.date(),
      }),
    }),
  },
});
