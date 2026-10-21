.class public Lk0/aa$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$f;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 2
    sput-object v0, Lu0/b;->k3:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/aa$f;->a:Lk0/aa;

    const/16 v1, -0x1d

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    return-void
.end method
