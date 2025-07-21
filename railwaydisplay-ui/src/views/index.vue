<template>
  <div class="app-container home">
      
  </div>
</template>

<script setup>
import { listNotice } from '@/api/system/notice'
import { ElNotification } from 'element-plus'
import { onMounted } from 'vue'

onMounted(() => {
  listNotice().then(response => {
    if (response.rows && response.rows.length > 0) {
      // 按创建时间降序排序，取最新三条
      const sorted = response.rows.sort((a, b) => new Date(b.createTime) - new Date(a.createTime))
      const top3 = sorted.slice(0, 3)
      // 依次弹出三条公告，每条间隔 800ms
      top3.forEach((notice, idx) => {
        setTimeout(() => {
          ElNotification({
            title: notice.noticeTitle || '公告',
            message: notice.noticeContent || '您有新的公告，请注意查收！',
            dangerouslyUseHTMLString: true,
            type: 'info',
            duration: 5000
          })
        }, idx * 800) // 每条延迟 0ms、800ms、1600ms
      })
    }
  })
})
</script>

<style scoped lang="scss">
// .home {
//   blockquote {
//     padding: 10px 20px;
//     margin: 0 0 20px;
//     font-size: 17.5px;
//     border-left: 5px solid #eee;
//   }
//   hr {
//     margin-top: 20px;
//     margin-bottom: 20px;
//     border: 0;
//     border-top: 1px solid #eee;
//   }
//   .col-item {
//     margin-bottom: 20px;
//   }

//   ul {
//     padding: 0;
//     margin: 0;
//   }

//   font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
//   font-size: 13px;
//   color: #676a6c;
//   overflow-x: hidden;

//   ul {
//     list-style-type: none;
//   }

//   h4 {
//     margin-top: 0px;
//   }

//   h2 {
//     margin-top: 10px;
//     font-size: 26px;
//     font-weight: 100;
//   }

//   p {
//     margin-top: 10px;

//     b {
//       font-weight: 700;
//     }
//   }

//   .update-log {
//     ol {
//       display: block;
//       list-style-type: decimal;
//       margin-block-start: 1em;
//       margin-block-end: 1em;
//       margin-inline-start: 0;
//       margin-inline-end: 0;
//       padding-inline-start: 40px;
//     }
//   }
// }
</style>

