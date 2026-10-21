.class public Lf1/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/l;


# direct methods
.method public constructor <init>(Lf1/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/l$b;->a:Lf1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/l$b;->a:Lf1/l;

    invoke-virtual {v0}, Lf1/l;->D()V

    return-void
.end method
