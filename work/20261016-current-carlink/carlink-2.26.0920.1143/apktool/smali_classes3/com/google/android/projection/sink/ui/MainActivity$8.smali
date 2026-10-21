.class Lcom/google/android/projection/sink/ui/MainActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity;->onConnected(Lcom/google/android/projection/protocol/Transport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;

.field final synthetic val$transport:Lcom/google/android/projection/protocol/Transport;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    iput-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->val$transport:Lcom/google/android/projection/protocol/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "Transport connected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1202(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->val$transport:Lcom/google/android/projection/protocol/Transport;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1302(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)Lcom/google/android/projection/protocol/Transport;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1400(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 33
    .line 34
    sget v1, Lcom/google/android/projection/sink/R$id;->surface:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/view/SurfaceView;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1502(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 46
    .line 47
    sget v1, Lcom/google/android/projection/sink/R$id;->fps:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v3, v0

    .line 54
    check-cast v3, Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1500(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/SurfaceView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1600(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/View$OnTouchListener;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->getEmulatedWidth()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->getEmulatedHeight()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getEmulatedDpi()F

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iget-object v4, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 102
    .line 103
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget v5, v4, Landroid/util/DisplayMetrics;->xdpi:F

    .line 112
    .line 113
    iget v4, v4, Landroid/util/DisplayMetrics;->ydpi:F

    .line 114
    .line 115
    add-float/2addr v5, v4

    .line 116
    const/high16 v4, 0x40000000    # 2.0f

    .line 117
    .line 118
    div-float v10, v5, v4

    .line 119
    .line 120
    iget-object v4, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 121
    .line 122
    invoke-static {v4}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Lcom/google/android/projection/sink/settings/Settings;->isScaledToScreen()Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    const/4 v12, 0x0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    const/4 v4, 0x0

    .line 136
    cmpl-float v4, v2, v4

    .line 137
    .line 138
    if-nez v4, :cond_0

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    move v7, v0

    .line 142
    move v8, v1

    .line 143
    move v9, v2

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    move v9, v10

    .line 146
    move v7, v12

    .line 147
    move v8, v7

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 149
    .line 150
    new-instance v1, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 151
    .line 152
    move-object v6, v1

    .line 153
    invoke-direct/range {v6 .. v11}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;-><init>(IIFFZ)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1702(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 160
    .line 161
    new-instance v8, Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1500(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/SurfaceView;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 174
    .line 175
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 180
    .line 181
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 186
    .line 187
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2000(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    move-object v1, v8

    .line 192
    invoke-direct/range {v1 .. v7}, Lcom/google/android/projection/sink/video/ProjectionRenderer;-><init>(Landroid/view/SurfaceView;Landroid/widget/TextView;Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;Lcom/google/android/projection/sink/video/VideoLatencyChecker;Lcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v0, v8}, Lcom/google/android/projection/sink/ui/MainActivity;->access$802(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$1500(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/SurfaceView;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0, v12}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->getRenderFrame()Landroid/graphics/Rect;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$8;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 218
    .line 219
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 220
    .line 221
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 222
    .line 223
    invoke-static {v1, v2, v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$2100(Lcom/google/android/projection/sink/ui/MainActivity;II)V

    .line 224
    .line 225
    .line 226
    return-void
.end method
