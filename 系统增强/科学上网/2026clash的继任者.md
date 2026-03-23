mihomo（Clash 的继任者）


当初 Clash 确实凭借规则分流这一杀手锏，在体验和功能上碾压了传统 SS/SSR 的「全局代理」模式，成为代理客户端的事实标准。

现在的 mihomo 虽然继承了 Clash 的衣钵，但面临的格局已经完全不同——**它不再是唯一的王者，而是群雄割据中的核心一环**。

**当前代理生态的主要势力分布：**

| 阵营 | 代表工具 | 特点 |
|------|---------|------|
| **Clash 系 (mihomo 核心)** | Clash Verge Rev、Mihomo Party、Clash Meta for Android、Surfboard | 占据 GUI 客户端的半壁江山，生态成熟，但内核其实只有一个（mihomo） |
| **独立内核派** | **sing-box** | 用 Go 重写的新内核，跨平台（Windows/macOS/Linux/iOS/Android/Apple TV），统一代码库，不兼容 Clash 配置但性能更强，被 SagerNet、Nekoray 等采用，是 mihomo 最大挑战者 |
| **Rust 系** | **Clash Rust** (clash-rs) | 纯 Rust 实现，主打性能和内存安全，仍在发展中 |
| **传统延续** | v2rayNG、SagerNet(现已转向 sing-box)、Shadowrocket(iOS) | 各守一亩三分地 |

**关键变化：mihomo 的「统治力」正在分流**

1. **sing-box 的崛起**：作为不依赖 Clash 生态的全新内核，sing-box 在移动端（尤其是 Android 的 SagerNet、NekoBox）和 Apple TV 场景增长迅速。它原生支持更多新协议（如 Hysteria、Tuic、Reality 的完整实现），且跨平台一致性更好，不像 mihomo 还需要各个平台分别维护 GUI。

2. **协议碎片化**：新协议（VLESS/XUDP/Reality）的更新速度加快，mihomo 虽然跟进较快，但 sing-box 作为更现代化的代码库，在协议实现上往往更「正统」。

3. **iOS 生态的封闭性**：iOS 上 Shadowrocket、Stash、Surge 等付费工具依然强势，mihomo 只能通过 TestFlight 的 Clash Meta for iOS 有限渗透，无法像在 Android/PC 那样形成绝对优势。

**结论**：mihomo 现在是 Clash 生态的**唯一继承者**，但不再是整个代理工具界的「唯一王者」。它和 sing-box 形成了双寡头格局——如果你追求 Clash 配置兼容和成熟的 GUI 生态，选 mihomo；如果你要最新协议支持或跨平台一致性，选 sing-box。格局已从「Clash 一家独大」变成了「两超多强」。