.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final callingPackage:Ljava/lang/String;

.field public final origIntent:Landroid/content/Intent;

.field public final resolveForStart:Z

.field public final resolvedType:Ljava/lang/String;

.field public final responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final userId:I

.field public final verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 13
    .line 14
    iput-object p6, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    .line 15
    .line 16
    iput-boolean p7, p0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    .line 17
    .line 18
    return-void
.end method
