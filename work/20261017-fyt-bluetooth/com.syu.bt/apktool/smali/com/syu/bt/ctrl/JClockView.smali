.class public Lcom/syu/bt/ctrl/JClockView;
.super Landroid/view/View;
.source "JClockView.java"


# instance fields
.field centerX:I

.field centerY:I

.field mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

.field mDrawableHour:Landroid/graphics/drawable/BitmapDrawable;

.field mDrawableMin:Landroid/graphics/drawable/BitmapDrawable;

.field mDrawableSec:Landroid/graphics/drawable/BitmapDrawable;

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHeigh:I

.field mPaint:Landroid/graphics/Paint;

.field mTempHeigh:I

.field mTempWidth:I

.field mWidth:I

.field private sTimeZoneString:Ljava/lang/String;

.field tickHandler:Landroid/os/Handler;

.field private tickRunnable:Ljava/lang/Runnable;

.field ui:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/app/MyUi;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ui"    # Lcom/lsec/core/frame/app/MyUi;

    .prologue
    .line 43
    const-string v0, "GMT+8\uff1a00"

    invoke-direct {p0, p1, v0}, Lcom/syu/bt/ctrl/JClockView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/syu/bt/ctrl/JClockView;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sTime_Zone"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawables:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/syu/bt/ctrl/JClockView$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/ctrl/JClockView$1;-><init>(Lcom/syu/bt/ctrl/JClockView;)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->tickRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object p2, p0, Lcom/syu/bt/ctrl/JClockView;->sTimeZoneString:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JClockView;->run()V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/ctrl/JClockView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    .line 72
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->sTimeZoneString:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 71
    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 73
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 74
    .local v1, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 75
    .local v3, "minute":I
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 76
    .local v5, "second":I
    int-to-float v7, v1

    mul-float/2addr v7, v11

    int-to-float v8, v3

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v11

    add-float v2, v7, v8

    .line 77
    .local v2, "hourRotate":F
    int-to-float v7, v3

    mul-float v4, v7, v10

    .line 78
    .local v4, "minuteRotate":F
    int-to-float v7, v5

    mul-float v6, v7, v10

    .line 79
    .local v6, "secondRotate":F
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 80
    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->mHeigh:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->mWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 81
    iget v12, p0, Lcom/syu/bt/ctrl/JClockView;->mHeigh:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 79
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 82
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    .line 85
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget v7, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    int-to-float v8, v8

    invoke-virtual {p1, v2, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableHour:Landroid/graphics/drawable/BitmapDrawable;

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 89
    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 90
    iget v12, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 88
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 91
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableHour:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableMin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    .line 96
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableMin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget v7, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    int-to-float v8, v8

    invoke-virtual {p1, v4, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 99
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableMin:Landroid/graphics/drawable/BitmapDrawable;

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 100
    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 101
    iget v12, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 99
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 102
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableMin:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableSec:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    .line 107
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableSec:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    .line 108
    iget v7, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 109
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableSec:Landroid/graphics/drawable/BitmapDrawable;

    iget v8, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 110
    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->mTempWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 111
    iget v12, p0, Lcom/syu/bt/ctrl/JClockView;->mTempHeigh:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 109
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 112
    iget-object v7, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableSec:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "hour":I
    .end local v2    # "hourRotate":F
    .end local v3    # "minute":I
    .end local v4    # "minuteRotate":F
    .end local v5    # "second":I
    .end local v6    # "secondRotate":F
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JClockView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 120
    .local v1, "uiItem":Lcom/lsec/core/frame/app/MyUiItem;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "strDrawableExtras":[Ljava/lang/String;
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v4, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableHour:Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableMin:Landroid/graphics/drawable/BitmapDrawable;

    .line 125
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iget-object v4, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableSec:Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    iget-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/syu/bt/ctrl/JClockView;->mWidth:I

    .line 131
    iget-object v2, p0, Lcom/syu/bt/ctrl/JClockView;->mDrawableDial:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/syu/bt/ctrl/JClockView;->mHeigh:I

    .line 132
    iget v2, p0, Lcom/syu/bt/ctrl/JClockView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/syu/bt/ctrl/JClockView;->centerX:I

    .line 133
    iget v2, p0, Lcom/syu/bt/ctrl/JClockView;->mHeigh:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/syu/bt/ctrl/JClockView;->centerY:I

    .line 138
    .end local v0    # "strDrawableExtras":[Ljava/lang/String;
    .end local v1    # "uiItem":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 139
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->tickHandler:Landroid/os/Handler;

    .line 57
    iget-object v0, p0, Lcom/syu/bt/ctrl/JClockView;->tickHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/bt/ctrl/JClockView;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
