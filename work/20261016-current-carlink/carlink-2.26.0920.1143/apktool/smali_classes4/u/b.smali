.class public abstract Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/f;


# instance fields
.field public final a:Lz/l;

.field public final b:Lu/f;


# direct methods
.method public constructor <init>(Lu/f;Lz/l;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "safeCast"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lu/b;->a:Lz/l;

    .line 15
    .line 16
    instance-of p2, p1, Lu/b;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    check-cast p1, Lu/b;

    .line 21
    .line 22
    iget-object p1, p1, Lu/b;->b:Lu/f;

    .line 23
    .line 24
    :cond_0
    iput-object p1, p0, Lu/b;->b:Lu/f;

    .line 25
    .line 26
    return-void
.end method
