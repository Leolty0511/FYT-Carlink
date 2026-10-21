.class public Lutil/SunshineTimeObserver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static g:Lutil/SunshineTimeObserver;


# instance fields
.field public a:Ljava/util/Date;

.field public b:Ljava/util/Date;

.field public c:Z

.field public d:Landroid/location/Location;

.field public e:Z

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lutil/SunshineTimeObserver;

    invoke-direct {v0}, Lutil/SunshineTimeObserver;-><init>()V

    sput-object v0, Lutil/SunshineTimeObserver;->g:Lutil/SunshineTimeObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    .line 3
    iput-object v1, p0, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lutil/SunshineTimeObserver;->c:Z

    .line 5
    iput-object v1, p0, Lutil/SunshineTimeObserver;->d:Landroid/location/Location;

    .line 6
    iput-boolean v2, p0, Lutil/SunshineTimeObserver;->e:Z

    .line 7
    iput v2, p0, Lutil/SunshineTimeObserver;->f:I

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/Date;

    const/16 v3, 0xe3

    invoke-static {v3, v0}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    .line 9
    new-instance v1, Ljava/util/Date;

    const/16 v3, 0xe4

    invoke-static {v3, v0}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lutil/SunshineTimeObserver;->f:I

    .line 12
    sget-object v0, Lu0/c;->c:Lo1/y;

    invoke-virtual {v0, p0, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const-string v0, "Qin"

    const-string v1, "------>> SunshineTimeObserver init : "

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public X(DD)V
    .locals 6

    .line 1
    iget v5, p0, Lutil/SunshineTimeObserver;->f:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lutil/SunshineTimeObserver;->Y(DDI)V

    return-void
.end method

.method public Y(DDI)V
    .locals 23

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "------>> calculateSunshineTime longitude : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, " latitude: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "Qin"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/4 v2, 0x6

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    mul-int/lit8 v2, p5, 0xf

    add-int/lit16 v2, v2, 0xb4

    int-to-double v4, v2

    sub-double/2addr v4, v8

    const-wide v17, -0x3fc899999999999aL    # -23.4

    const-wide v19, 0x401921fb54442d18L    # 6.283185307179586

    add-int/lit8 v3, v3, 0x9

    int-to-double v2, v3

    mul-double v2, v2, v19

    move-object/from16 v19, v14

    int-to-double v14, v0

    div-double/2addr v2, v14

    .line 6
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v17

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v14

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double v21, v10, v14

    div-double v21, v21, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->tan(D)D

    move-result-wide v21

    mul-double v2, v2, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double v2, v2, v16

    div-double/2addr v2, v14

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v4, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v2, v4, v2

    double-to-int v0, v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double v14, v2, v4

    rem-double/2addr v14, v4

    double-to-int v4, v14

    const/16 v5, 0xb

    .line 7
    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 8
    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 10
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v7, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p5

    .line 11
    invoke-virtual/range {v1 .. v6}, Lutil/SunshineTimeObserver;->c0(DDI)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v7, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    const/16 v0, 0xe3

    .line 12
    iget-object v1, v7, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lm1/c;->f(ILjava/lang/String;)V

    const/16 v0, 0xe4

    .line 13
    iget-object v1, v7, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lm1/c;->f(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, v19

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v19, v14

    .line 14
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " == >>  Error!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------>> sunrise : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    const-string v3, "NULL"

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sunset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Z()V
    .locals 2

    const-string v0, "Qin"

    const-string v1, "------>> SunshineTimeObserver endObserve : "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lutil/SunshineTimeObserver;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lutil/SunshineTimeObserver;->c:Z

    return-void
.end method

.method public a0(Ljava/util/Date;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gtz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public b0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lutil/SunshineTimeObserver;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Qin"

    const-string v1, "------>> SunshineTimeObserver startObserve : "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lutil/SunshineTimeObserver;->e:Z

    return-void
.end method

.method public c0(DDI)Ljava/util/Date;
    .locals 2

    mul-int/lit8 p5, p5, 0xf

    int-to-double v0, p5

    sub-double/2addr v0, p3

    const-wide p3, 0x4066800000000000L    # 180.0

    div-double/2addr v0, p3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p3

    const-wide/high16 p3, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, p3

    sub-double/2addr v0, p1

    double-to-int p1, v0

    const-wide/high16 p2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, p2

    rem-double/2addr v0, p2

    double-to-int p2, v0

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 2
    invoke-virtual {p3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Calendar;

    const/16 p4, 0xb

    .line 3
    invoke-virtual {p3, p4, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public d0()V
    .locals 2

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->h3()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-boolean v1, p0, Lutil/SunshineTimeObserver;->c:Z

    invoke-virtual {v0, v1}, Lu0/i;->C3(I)V

    :cond_0
    return-void
.end method

.method public e0()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lutil/SunshineTimeObserver;->a0(Ljava/util/Date;)Z

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------>> tick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isNight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lutil/SunshineTimeObserver;->c:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " night : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lutil/SunshineTimeObserver;->c:Z

    if-eq v0, v1, :cond_2

    .line 5
    iput-boolean v1, p0, Lutil/SunshineTimeObserver;->c:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------>> sunrise : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lutil/SunshineTimeObserver;->a:Ljava/util/Date;

    const-string v3, "NULL"

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sunset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lutil/SunshineTimeObserver;->b:Ljava/util/Date;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isNight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lutil/SunshineTimeObserver;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lutil/SunshineTimeObserver;->d0()V

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lutil/SunshineTimeObserver;->e0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    div-int/lit16 p1, p1, 0xe10

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lutil/SunshineTimeObserver;->f:I

    .line 8
    iget-object p1, p0, Lutil/SunshineTimeObserver;->d:Landroid/location/Location;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    iget-object v0, p0, Lutil/SunshineTimeObserver;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lutil/SunshineTimeObserver;->X(DD)V

    .line 10
    invoke-virtual {p0}, Lutil/SunshineTimeObserver;->e0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->f:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lutil/SunshineTimeObserver;->d0()V

    .line 3
    invoke-virtual {p0}, Lutil/SunshineTimeObserver;->b0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lutil/SunshineTimeObserver;->Z()V

    :goto_0
    return-void
.end method
