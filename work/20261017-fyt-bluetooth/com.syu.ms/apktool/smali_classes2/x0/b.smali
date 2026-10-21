.class public Lx0/b;
.super Lx0/d;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public c:Landroid/hardware/SensorManager;

.field public d:Landroid/os/Handler;

.field public e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:I

.field public h:Z

.field public final i:Ljava/lang/Runnable;

.field public final j:Ljava/lang/Runnable;

.field public final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lx0/d;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lx0/b;->c:Landroid/hardware/SensorManager;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lx0/b;->d:Landroid/os/Handler;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lx0/b;->e:Ljava/util/LinkedList;

    const/16 p1, 0xa

    .line 5
    iput p1, p0, Lx0/b;->f:I

    const/16 p1, 0x3e8

    .line 6
    iput p1, p0, Lx0/b;->g:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lx0/b;->h:Z

    .line 8
    new-instance p1, Lx0/b$a;

    invoke-direct {p1, p0}, Lx0/b$a;-><init>(Lx0/b;)V

    iput-object p1, p0, Lx0/b;->i:Ljava/lang/Runnable;

    .line 9
    new-instance p1, Lx0/b$b;

    invoke-direct {p1, p0}, Lx0/b$b;-><init>(Lx0/b;)V

    iput-object p1, p0, Lx0/b;->j:Ljava/lang/Runnable;

    .line 10
    new-instance p1, Lx0/b$c;

    invoke-direct {p1, p0}, Lx0/b$c;-><init>(Lx0/b;)V

    iput-object p1, p0, Lx0/b;->k:Ljava/lang/Runnable;

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lx0/b;->c:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static synthetic k(Lx0/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lx0/b;->k:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lx0/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lx0/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lx0/b;->j:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lx0/b;->j:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public varargs l([I)V
    .locals 5

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget v0, Lu0/b;->g:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 3
    iget-object v3, p0, Lx0/b;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lx0/b;->c:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/16 v1, 0x3d

    .line 3
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lx0/b;->e:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lx0/b;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 6
    iget-object v1, p0, Lx0/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr p1, v2

    goto :goto_0

    :cond_0
    const v1, 0x461c4000    # 10000.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    .line 7
    :cond_1
    iput-boolean v0, p0, Lx0/b;->h:Z

    .line 8
    iget-object p1, p0, Lx0/b;->d:Landroid/os/Handler;

    iget-object v0, p0, Lx0/b;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lx0/b;->d:Landroid/os/Handler;

    iget-object v0, p0, Lx0/b;->i:Ljava/lang/Runnable;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lx0/b;->e:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_2
    return-void
.end method
