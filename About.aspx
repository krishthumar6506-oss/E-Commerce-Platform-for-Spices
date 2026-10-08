<%@ Page Title="About Us"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="About.aspx.cs"
    Inherits="E_Commerce_Platform_for_Spices.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/About.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HERO SECTION: OUR HERITAGE BANNER -->
    <section class="heritage-hero-section">
        <div class="heritage-banner-container">
            <img src="Images/About%20Us.png" alt="Our Heritage" class="heritage-banner-img" />
        </div>
    </section>

    <!-- MISSION & VISION SECTION -->
    <section class="mission-vision-wrapper">
        <div class="container">
            <div class="row g-4 justify-content-center">
                
                <!-- Mission Card -->
                <div class="col-lg-6 col-md-6">
                    <div class="mv-clean-card">
                        <div class="mv-icon-box mission-icon-box">
                            <svg width="22" height="22" viewBox="0 0 24 24" fill="#2e7d32">
                                <path d="M14.4 6L14 4H5v17h2v-7h5.6l.4 2h7V6h-5.6z"/>
                            </svg>
                        </div>
                        <h4 class="mv-clean-title">Our Mission</h4>
                        <p class="mv-clean-desc">
                            To deliver uncompromising quality by sourcing the finest ingredients and crafting them into premium provisions that nourish communities and elevate everyday meals. We strive to maintain the integrity of artisanal methods while embracing the efficiencies of modern production.
                        </p>
                    </div>
                </div>

                <!-- Vision Card -->
                <div class="col-lg-6 col-md-6">
                    <div class="mv-clean-card">
                        <div class="mv-icon-box vision-icon-box">
                            <svg width="22" height="22" viewBox="0 0 24 24" fill="#e65100">
                                <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                            </svg>
                        </div>
                        <h4 class="mv-clean-title">Our Vision</h4>
                        <p class="mv-clean-desc">
                            To be the globally recognized standard for premium, authentically crafted food products. We envision a future where 'manufactured' is synonymous with 'meticulous,' establishing a new benchmark for trust and taste in the modern culinary landscape.
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- OUR PROCESS SECTION -->
    <section class="process-wrapper-section">
        <div class="container">
            
            <h2 class="section-title-center">Our Process</h2>

            <!-- Big Sage Green Container -->
            <div class="process-cycle-container">
                <h3 class="cycle-title">Process Cycle</h3>

                <!-- 9-Card Process Grid -->
                <div class="process-cards-grid">
                    
                    <!-- 1. Raw Material -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="9" cy="20" r="1.8"/>
                                <circle cx="17" cy="20" r="1.8"/>
                                <path d="M3 4h2l2 11h11a2 2 0 0 0 2-1.6L22 7H6"/>
                                <path d="M11 9h5"/>
                                <path d="M13 7v4"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Raw Material</span>
                    </div>

                    <!-- 2. Pre Fumigation -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="7" r="4"/>
                                <path d="M5.5 21v-2a6.5 6.5 0 0 1 13 0v2"/>
                                <circle cx="17" cy="14" r="3"/>
                                <path d="M19.1 16.1l2.4 2.4"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Pre Fumigation</span>
                    </div>

                    <!-- 3. Cleaning -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3"/>
                                <path d="M17 2l.7 1.3L19 4l-1.3.7L17 6l-.7-1.3L15 4l1.3-.7z"/>
                                <path d="M21 7l.4.8L22 8l-.6.2-.4.8-.4-.8L20 8l.6-.2z"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Cleaning</span>
                    </div>

                    <!-- 4. Sorting -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="5" r="3"/>
                                <line x1="12" y1="8" x2="12" y2="13"/>
                                <line x1="6" y1="13" x2="18" y2="13"/>
                                <line x1="6" y1="13" x2="6" y2="16"/>
                                <line x1="12" y1="13" x2="12" y2="16"/>
                                <line x1="18" y1="13" x2="18" y2="16"/>
                                <rect x="4" y="16" width="4" height="4" rx="1"/>
                                <rect x="10" y="16" width="4" height="4" rx="1"/>
                                <rect x="16" y="16" width="4" height="4" rx="1"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Sorting</span>
                    </div>

                    <!-- 5. Grading -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <line x1="12" y1="3" x2="12" y2="21"/>
                                <line x1="4" y1="7" x2="20" y2="7"/>
                                <path d="M4 7l-2 5h6L6 7z"/>
                                <path d="M20 7l-2 5h6l-2-5z"/>
                                <path d="M8 21h8"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Grading</span>
                    </div>

                    <!-- 6. Packaging -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/>
                                <polyline points="3.27 6.96 12 12.01 20.73 6.96"/>
                                <line x1="12" y1="22.08" x2="12" y2="12"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Packaging</span>
                    </div>

                    <!-- 7. ETO -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
                                <polyline points="14 2 14 8 20 8"/>
                                <line x1="9" y1="13" x2="15" y2="13"/>
                                <line x1="9" y1="17" x2="13" y2="17"/>
                                <circle cx="15.5" cy="16.5" r="2.5"/>
                                <line x1="17.5" y1="18.5" x2="19.5" y2="20.5"/>
                            </svg>
                        </div>
                        <span class="p-card-label">ETO</span>
                    </div>

                    <!-- 8. Post Fumigation -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <line x1="18" y1="20" x2="18" y2="10"/>
                                <line x1="12" y1="20" x2="12" y2="4"/>
                                <line x1="6" y1="20" x2="6" y2="14"/>
                                <polyline points="4 9 12 3 20 9"/>
                                <line x1="2" y1="20" x2="22" y2="20"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Post Fumigation</span>
                    </div>

                    <!-- 9. Storage -->
                    <div class="process-card-item">
                        <div class="p-card-icon">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="#3d8b66" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M3 21h18"/>
                                <path d="M4 21V9l8-5 8 5v12"/>
                                <path d="M9 21v-7h6v7"/>
                            </svg>
                        </div>
                        <span class="p-card-label">Storage</span>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <!-- OUR TEAM SECTION -->
    <section class="team-clean-section">
        <div class="container text-center">
            <h2 class="section-title-center">Our Team</h2>
            <p class="team-body-text">
                We work in close coordination with our clients and develop, produce and supply products customized to their needs with regard to a. Product Quality b. Food Safety and Hygiene c. Packaging d. Supply Schedule. We maintain record for full traceability for all the products we export. Root cause analysis is carried to identify the main cause and loopholes are plugged to ensure there is no repetition of the problems faced. All our system and processes are geared to meet the expectations of our esteemed customer.
            </p>
        </div>
    </section>

</asp:Content>
