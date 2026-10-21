.class public Lk0/r1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/r1;


# direct methods
.method public constructor <init>(Lk0/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/r1$c;->a:Lk0/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/r1$c;->a:Lk0/r1;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    const/16 v2, -0x1e

    invoke-static {v0, v2, v1}, Lk0/r1;->h3(Lk0/r1;BLjava/lang/String;)V

    return-void
.end method
