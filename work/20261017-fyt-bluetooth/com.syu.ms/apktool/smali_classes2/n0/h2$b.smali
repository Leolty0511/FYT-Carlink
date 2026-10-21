.class public Ln0/h2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/h2;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/h2;


# direct methods
.method public constructor <init>(Ln0/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/h2$b;->a:Ln0/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "persist.fyt.rotatevoice"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    sput v0, Ly0/f;->U0:I

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ly0/h;->p0(I)V

    .line 4
    iget-object v0, p0, Ln0/h2$b;->a:Ln0/h2;

    iget-object v1, v0, Ln0/h2;->A:Landroid/media/SoundPool;

    iget v2, v0, Ln0/h2;->B:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
