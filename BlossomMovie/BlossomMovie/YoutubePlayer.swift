//
//  YoutubePlayer.swift
//  BlossomMovie
//
//  Created by Syimyk on 2/9/26.
//
import SwiftUI
import WebKit

struct YoutubePlayer: UIViewRepresentable {
    let videoId: String

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()

        let webView = WKWebView(
            frame: .zero,
            configuration: configuration
        )

        webView.scrollView.isScrollEnabled = false
        webView.isOpaque = false
        webView.backgroundColor = .black

        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        guard !videoId.isEmpty else {
            return
        }

        let html = """
        <!DOCTYPE html>
        <html>
        <head>
            <meta name="viewport"
                  content="width=device-width,
                           initial-scale=1.0,
                           maximum-scale=1.0,
                           user-scalable=no">

            <meta name="referrer"
                  content="strict-origin-when-cross-origin">

            <style>
                html, body {
                    margin: 0;
                    padding: 0;
                    width: 100%;
                    height: 100%;
                    background-color: #000;
                    overflow: hidden;
                }

                .video-container {
                    position: relative;
                    width: 100%;
                    height: 100%;
                }

                iframe {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    border: 0;
                }
            </style>
        </head>

        <body>
            <div class="video-container">
                <iframe
                    src="https://www.youtube.com/embed/\(videoId)?playsinline=1&rel=0"
                    title="YouTube video player"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write;
                           encrypted-media; gyroscope;
                           picture-in-picture; web-share"
                    allowfullscreen
                    referrerpolicy="strict-origin-when-cross-origin">
                </iframe>
            </div>
        </body>
        </html>
        """

        webView.loadHTMLString(
            html,
            baseURL: URL(string: "https://your-app.example")
        )
    }
}

