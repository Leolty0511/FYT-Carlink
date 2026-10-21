.class final Landroid/os/MessageQueue$FileDescriptorRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorRecord"
.end annotation


# instance fields
.field public final mDescriptor:Ljava/io/FileDescriptor;

.field public mEvents:I

.field public mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

.field public mSeq:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    .line 5
    .line 6
    iput p2, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 9
    .line 10
    return-void
.end method
