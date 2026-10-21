.class Landroid/animation/LayoutTransition$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$anim:Landroid/animation/Animator;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$duration:J

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->setupEndValues()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 7
    .line 8
    instance-of p2, p1, Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz p2, :cond_4

    .line 11
    .line 12
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    move p3, p2

    .line 20
    :goto_0
    array-length p4, p1

    .line 21
    if-ge p2, p4, :cond_3

    .line 22
    .line 23
    aget-object p4, p1, p2

    .line 24
    .line 25
    iget-object p5, p4, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 26
    .line 27
    instance-of p6, p5, Landroid/animation/KeyframeSet;

    .line 28
    .line 29
    const/4 p7, 0x1

    .line 30
    if-eqz p6, :cond_0

    .line 31
    .line 32
    check-cast p5, Landroid/animation/KeyframeSet;

    .line 33
    .line 34
    iget-object p4, p5, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    iget-object p6, p5, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 39
    .line 40
    if-eqz p6, :cond_1

    .line 41
    .line 42
    invoke-virtual {p4}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    iget-object p5, p5, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 47
    .line 48
    invoke-virtual {p5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    invoke-virtual {p4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-nez p4, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 p6, 0x0

    .line 60
    invoke-interface {p5, p6}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    iget-object p4, p4, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 65
    .line 66
    const/high16 p6, 0x3f800000    # 1.0f

    .line 67
    .line 68
    invoke-interface {p4, p6}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-nez p4, :cond_2

    .line 77
    .line 78
    :cond_1
    :goto_1
    move p3, p7

    .line 79
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    if-nez p3, :cond_4

    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    iget p1, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    .line 86
    .line 87
    const/4 p2, 0x2

    .line 88
    if-eq p1, p2, :cond_7

    .line 89
    .line 90
    const/4 p2, 0x3

    .line 91
    if-eq p1, p2, :cond_6

    .line 92
    .line 93
    const/4 p2, 0x4

    .line 94
    if-eq p1, p2, :cond_5

    .line 95
    .line 96
    const-wide/16 p1, 0x0

    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_5
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 101
    .line 102
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1000(Landroid/animation/LayoutTransition;)J

    .line 103
    .line 104
    .line 105
    move-result-wide p1

    .line 106
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 107
    .line 108
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    .line 109
    .line 110
    .line 111
    move-result-wide p3

    .line 112
    add-long/2addr p1, p3

    .line 113
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 114
    .line 115
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    .line 116
    .line 117
    .line 118
    move-result-wide p4

    .line 119
    iget-object p6, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 120
    .line 121
    invoke-static {p6}, Landroid/animation/LayoutTransition;->access$1100(Landroid/animation/LayoutTransition;)J

    .line 122
    .line 123
    .line 124
    move-result-wide p6

    .line 125
    add-long/2addr p6, p4

    .line 126
    invoke-static {p3, p6, p7}, Landroid/animation/LayoutTransition;->access$202(Landroid/animation/LayoutTransition;J)J

    .line 127
    .line 128
    .line 129
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 130
    .line 131
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$1200(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    invoke-static {}, Landroid/animation/LayoutTransition;->access$1300()Landroid/animation/TimeInterpolator;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    if-eq p3, p4, :cond_8

    .line 140
    .line 141
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 142
    .line 143
    iget-object p4, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 144
    .line 145
    invoke-static {p4}, Landroid/animation/LayoutTransition;->access$1200(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 154
    .line 155
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$600(Landroid/animation/LayoutTransition;)J

    .line 156
    .line 157
    .line 158
    move-result-wide p1

    .line 159
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 160
    .line 161
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    .line 162
    .line 163
    .line 164
    move-result-wide p3

    .line 165
    add-long/2addr p1, p3

    .line 166
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 167
    .line 168
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    .line 169
    .line 170
    .line 171
    move-result-wide p4

    .line 172
    iget-object p6, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 173
    .line 174
    invoke-static {p6}, Landroid/animation/LayoutTransition;->access$700(Landroid/animation/LayoutTransition;)J

    .line 175
    .line 176
    .line 177
    move-result-wide p6

    .line 178
    add-long/2addr p6, p4

    .line 179
    invoke-static {p3, p6, p7}, Landroid/animation/LayoutTransition;->access$202(Landroid/animation/LayoutTransition;J)J

    .line 180
    .line 181
    .line 182
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 183
    .line 184
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    invoke-static {}, Landroid/animation/LayoutTransition;->access$900()Landroid/animation/TimeInterpolator;

    .line 189
    .line 190
    .line 191
    move-result-object p4

    .line 192
    if-eq p3, p4, :cond_8

    .line 193
    .line 194
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 195
    .line 196
    iget-object p4, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 197
    .line 198
    invoke-static {p4}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 207
    .line 208
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$100(Landroid/animation/LayoutTransition;)J

    .line 209
    .line 210
    .line 211
    move-result-wide p1

    .line 212
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 213
    .line 214
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    .line 215
    .line 216
    .line 217
    move-result-wide p3

    .line 218
    add-long/2addr p1, p3

    .line 219
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 220
    .line 221
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    .line 222
    .line 223
    .line 224
    move-result-wide p4

    .line 225
    iget-object p6, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 226
    .line 227
    invoke-static {p6}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    .line 228
    .line 229
    .line 230
    move-result-wide p6

    .line 231
    add-long/2addr p6, p4

    .line 232
    invoke-static {p3, p6, p7}, Landroid/animation/LayoutTransition;->access$202(Landroid/animation/LayoutTransition;J)J

    .line 233
    .line 234
    .line 235
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 236
    .line 237
    invoke-static {p3}, Landroid/animation/LayoutTransition;->access$400(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    invoke-static {}, Landroid/animation/LayoutTransition;->access$500()Landroid/animation/TimeInterpolator;

    .line 242
    .line 243
    .line 244
    move-result-object p4

    .line 245
    if-eq p3, p4, :cond_8

    .line 246
    .line 247
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 248
    .line 249
    iget-object p4, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 250
    .line 251
    invoke-static {p4}, Landroid/animation/LayoutTransition;->access$400(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    .line 252
    .line 253
    .line 254
    move-result-object p4

    .line 255
    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    .line 257
    .line 258
    :cond_8
    :goto_2
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 259
    .line 260
    invoke-virtual {p3, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 264
    .line 265
    iget-wide p2, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    .line 266
    .line 267
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 271
    .line 272
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1400(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Landroid/animation/Animator;

    .line 283
    .line 284
    if-eqz p1, :cond_9

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 287
    .line 288
    .line 289
    :cond_9
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 290
    .line 291
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    .line 296
    .line 297
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Landroid/animation/Animator;

    .line 302
    .line 303
    if-eqz p1, :cond_a

    .line 304
    .line 305
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 306
    .line 307
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    .line 312
    .line 313
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_a
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 317
    .line 318
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1400(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    .line 323
    .line 324
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    .line 325
    .line 326
    invoke-virtual {p1, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    .line 330
    .line 331
    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 339
    .line 340
    .line 341
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    .line 342
    .line 343
    invoke-static {p1}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    .line 348
    .line 349
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    return-void
.end method
