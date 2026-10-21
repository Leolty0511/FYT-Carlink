.class public Lf1/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/m;


# direct methods
.method public constructor <init>(Lf1/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/m$a;->a:Lf1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/m$a;->a:Lf1/m;

    invoke-virtual {v0}, Lf1/m;->D()V

    return-void
.end method
