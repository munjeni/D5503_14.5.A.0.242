.class public Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;

.field private mDrawableBanner:Landroid/graphics/drawable/Drawable;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 468
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 469
    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 470
    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    .line 472
    iput-object p4, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 473
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .param p4, "longClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p5, "drawableBanner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 479
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 480
    iput-object p2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 481
    iput-object p3, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 482
    iput-object p5, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    .line 483
    iput-object p4, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 484
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 490
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 491
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 492
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 495
    const v2, 0x7f0e00f2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 497
    .local v0, "banner":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 503
    :goto_0
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 505
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 506
    return-void

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentSettings$PaymentAppPreference;->mDrawableBanner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
