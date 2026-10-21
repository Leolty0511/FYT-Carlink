.class public Lr0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr0/a;


# direct methods
.method public constructor <init>(Lr0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr0/a$a;->a:Lr0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    iget-boolean v0, v0, Lr0/a;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lg1/c;->e:I

    const/4 v1, 0x1

    const-string v2, "persist.gesture.switch"

    if-ne v0, v1, :cond_1

    const-string v0, "2"

    .line 3
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "1"

    .line 4
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
