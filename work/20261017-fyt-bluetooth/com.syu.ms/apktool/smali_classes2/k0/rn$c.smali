.class public Lk0/rn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$c;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lw0/d;->H:Ljava/lang/String;

    const/16 v1, 0x70

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/rn$c;->a:Lk0/rn;

    const-string v2, "----"

    invoke-static {v0, v1, v2}, Lk0/rn;->h3(Lk0/rn;BLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lk0/rn$c;->a:Lk0/rn;

    invoke-static {v2, v1, v0}, Lk0/rn;->h3(Lk0/rn;BLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
