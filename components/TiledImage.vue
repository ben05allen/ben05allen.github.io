<template>
  <div>
    <div class="grid" :style="gridStyle">
      <div
        v-for="(tile, index) in tiles"
        :key="index"
        class="tile relative"
        :style="tile.style"
      >
        <div
          v-if="!unhide"
          class="absolute inset-0 bg-green-600 opacity-95 transition-opacity duration-[10s] ease-in hover:opacity-20 hover:duration-100"
        ></div>
      </div>
    </div>
    <div class="mt-5 w-full">
      <div
        v-if="unhide"
        class="border-2 border-gray-800 bg-green-600 text-gray-800 opacity-80 rounded-xl px-3 py-1 text-center text-sm w-20 ml-auto mr-6"
        @click="unhide = !unhide"
      >
        Hide
      </div>
      <div
        v-else
        class="border-2 border-gray-800 bg-green-600 text-gray-800 opacity-40 rounded-xl px-3 py-1 text-center text-sm w-20 ml-auto mr-6"
        @click="unhide = !unhide"
      >
        Unhide
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    // Number of rows in the grid
    rows: {
      type: Number,
      default: 20,
    },
    // Number of columns in the grid
    columns: {
      type: Number,
      default: 40,
    },
    // Size for each tile (both width and height)
    tileSize: {
      type: String,
      default: "22px",
    },
    // Gap between tiles
    gap: {
      type: String,
      default: "6px",
    },
  },
  computed: {
    // Dynamically build the grid container style
    gridStyle() {
      return {
        display: "grid",
        gridTemplateColumns: `repeat(${this.columns}, ${this.tileSize})`,
        gridAutoRows: this.tileSize,
        gap: this.gap,
      };
    },
    // Generate an array of tile objects with calculated background styles
    tiles() {
      const tileArray = [];
      for (let row = 0; row < this.rows; row++) {
        for (let col = 0; col < this.columns; col++) {
          // Calculate the background position for this tile
          const posX = (col / (this.columns - 1)) * 100;
          const posY = (row / (this.rows - 1)) * 100;
          tileArray.push({
            style: {
              backgroundImage: "url(img/test-image.jpg)",
              // Scale the background so that the entire image covers the grid
              backgroundSize: `${this.columns * 100}% ${this.rows * 100}%`,
              backgroundPosition: `${posX}% ${posY}%`,
              backgroundRepeat: "no-repeat",
            },
          });
        }
      }
      return tileArray;
    },
  },
  data() {
    return {
      unhide: false,
    };
  },
};
</script>

<style scoped>
/* Additional styling for tiles can be added here if needed */
.tile {
  border-radius: 3px;
  /* The dimensions of each tile are handled by the grid container */
}
</style>
