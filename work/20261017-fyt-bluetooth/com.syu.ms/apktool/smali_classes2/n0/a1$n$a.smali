.class public Ln0/a1$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a1$n;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/a1$n;


# direct methods
.method public constructor <init>(Ln0/a1$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$n$a;->a:Ln0/a1$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 1
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method
