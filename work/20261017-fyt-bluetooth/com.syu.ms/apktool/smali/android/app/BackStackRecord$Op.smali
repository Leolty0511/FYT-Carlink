.class final Landroid/app/BackStackRecord$Op;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public cmd:I

.field public enterAnim:I

.field public exitAnim:I

.field public fragment:Landroid/app/Fragment;

.field public next:Landroid/app/BackStackRecord$Op;

.field public popEnterAnim:I

.field public popExitAnim:I

.field public prev:Landroid/app/BackStackRecord$Op;

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
