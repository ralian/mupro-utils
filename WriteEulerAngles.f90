      program WriteEulerAngles

      implicit none
      integer,parameter:: nx=50,ny=50,nz=50
      integer,parameter:: nphase=100
      real*8,parameter::  pi=dacos(-1.d0)
      real*8  randn(3)
      real*8  phiGrain(nphase),thetaGrain(nphase),psiGrain(nphase)
      real*8  phi(nx,ny,nz),theta(nx,ny,nz),psi(nx,ny,nz)
      integer i,j,k,l,m

      call random_seed()

      do l=1,nphase
      call random_number(randn)
        phiGrain(l)  = randn(1)*360.d0
        thetaGrain(l)= dacos(randn(2)*2.d0-1.d0)*180.d0/pi
        psiGrain(l)  = randn(3)*360.d0
      enddo

      open(unit=1,file='grain.idx')

      do m=1,nx*ny*nz
        read(1,*),i,j,k,l
        phi(i,j,k)   = phiGrain(l)
        theta(i,j,k) = thetaGrain(l)
        psi(i,j,k)   = psiGrain(l)
      enddo

      close(1)

      open(unit=2,file='eulerAng.in')

      write(2,100),nx,ny,nz

      do i=1,nx
      do j=1,ny
      do k=1,nz
        write(2,100),i,j,k,phi(i,j,k),theta(i,j,k),psi(i,j,k)
      enddo
      enddo
      enddo

      close(2)

 100  format(3(i6),12(f11.5))

        stop
       end
